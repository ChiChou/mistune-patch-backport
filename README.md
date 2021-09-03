# CVE-2021-1748 Patch for iOS <= 14.3

The root cause of CVE-2021-1748 is that the app trusts arbitrary data URIs and loads them in a local WebView.

This tweak backports the patch for iOS <= 14.3 by intercepting `data:` URI.

Please note that there is still a powerful variant of bug. This patch doesn't stop server-side script injection or open-redirect on trusted domains.