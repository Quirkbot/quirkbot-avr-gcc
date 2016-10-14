var fs = require('fs')
var path = require('path')

var deleteFolderRecursive = function(p) {
	p = path.resolve(p)
	if( fs.existsSync(p) ) {
		fs.readdirSync(p).forEach(function(file) {
			var curP = path.resolve(p, file)
			if(fs.lstatSync(curP).isDirectory()) {
				deleteFolderRecursive(curP)
			} else {
				fs.unlinkSync(curP)
			}
		})
		fs.rmdirSync(p)
	}
}

var platforms = [
	'darwin-x64',
	'linux-ia32',
	'linux-x64',
	'win32-ia32'
]

// Move the current platform
fs.renameSync(
	path.resolve(process.platform + '-' + process.arch, 'tools'),
	path.resolve('tools')
)

// Clear other files
platforms.forEach(deleteFolderRecursive)

