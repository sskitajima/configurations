javascript:(function(){
  const vault = encodeURIComponent('my-obsidian-notes');
  const filepath = encodeURIComponent('_Inbox/あとで読む.md');
  const line = `- [ ] [${document.title}](${window.location.href})\n`;
  const data = encodeURIComponent(line);
  window.location.href = `obsidian://advanced-uri?vault=${vault}&filepath=${filepath}&data=${data}&mode=append`;
})();
