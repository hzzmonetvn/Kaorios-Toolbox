// SPDX-License-Identifier: AGPL-3.0-only
// Copyright (C) 2026 hzzmonetvn
const helperActions = new Set(['status', 'hma', 'enable-copg', 'disable-copg', 'enable-tee', 'disable-tee']);
let helperSequence = 0;

function helperExec(action) {
  if (!helperActions.has(action)) return Promise.reject(new Error('Unknown action'));
  if (typeof ksu === 'undefined' || !ksu.exec) {
    return Promise.reject(new Error('Open this WebUI using a compatible root manager or WebUI app.'));
  }
  return new Promise((resolve, reject) => {
    const callback = `helper_exec_${++helperSequence}`;
    window[callback] = (code, stdout, stderr) => {
      delete window[callback];
      if (Number(code) === 0) resolve(stdout || '');
      else reject(new Error(stderr || stdout || `Command failed: ${code}`));
    };
    try {
      ksu.exec(`sh /data/adb/modules/kaorios_helper/helperctl.sh ${action}`, '{}', callback);
    } catch (error) {
      delete window[callback];
      reject(error);
    }
  });
}

async function helperRefresh() {
  document.getElementById('status').textContent = await helperExec('status');
}

document.querySelectorAll('[data-action]').forEach(button => {
  button.addEventListener('click', async () => {
    const buttons = [...document.querySelectorAll('[data-action]')];
    buttons.forEach(item => { item.disabled = true; });
    try {
      const output = await helperExec(button.dataset.action);
      document.getElementById('message').textContent = output;
      if (button.dataset.action === 'status') document.getElementById('status').textContent = output;
      else await helperRefresh();
    } catch (error) {
      document.getElementById('message').textContent = error.message;
    } finally {
      buttons.forEach(item => { item.disabled = false; });
    }
  });
});

helperRefresh().catch(error => { document.getElementById('status').textContent = error.message; });
