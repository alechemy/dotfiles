#!/bin/sh
if command -v code >/dev/null; then
	if [ "$(uname -s)" = "Darwin" ]; then
		VSCODE_HOME="$HOME/Library/Application Support/Code"
	else
		VSCODE_HOME="$HOME/.config/Code"
	fi
	mkdir -p "$VSCODE_HOME/User"

	ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
	ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"
	ln -sf "$DOTFILES/vscode/snippets" "$VSCODE_HOME/User/snippets"

	# from `code --list-extensions`
	modules="
Angular.ng-template
brain.angular-bare-essentials
christian-kohler.npm-intellisense
christian-kohler.path-intellisense
CoenraadS.bracket-pair-colorizer
DavidAnson.vscode-markdownlint
dotiful.dotfiles-syntax-highlighting
DotJoshJohnson.xml
eg2.tslint
eg2.vscode-npm-script
eriklynd.json-tools
esbenp.prettier-vscode
fatihacet.gitlab-workflow
formulahendry.auto-close-tag
formulahendry.auto-complete-tag
GabrielBB.vscode-lombok
johnpapa.Angular2
kisstkondoros.vscode-codemetrics
lextudio.restructuredtext
ms-python.python
ms-vscode.vscode-typescript-tslint-plugin
msjsdiag.debugger-for-chrome
natewallace.angular2-inline
PKief.material-icon-theme
redhat.java
richie5um2.vscode-sort-json
shinnn.stylelint
tinkertrain.theme-panda
TomiTurtiainen.rf-intellisense
Tyriar.sort-lines
VisualStudioExptTeam.vscodeintellicode
vscjava.vscode-java-debug
vscjava.vscode-java-dependency
vscjava.vscode-java-pack
vscjava.vscode-java-test
vscjava.vscode-maven
vscode-icons-team.vscode-icons
"
	for module in $modules; do
		code --install-extension "$module" || true
	done
fi
