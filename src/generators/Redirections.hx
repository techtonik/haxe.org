package generators;

import haxe.io.Path;

class Redirections {

	public static function generate () {
		Sys.println("Generating redirections ...");

		var list =  [
			"/community/index.html" => "/community/community-support.html",
			"/documentation/index.html" => "/documentation/introduction/",
			"/manual/index.html" => "/manual/introduction.html",
			"/doc/index.html" => "/manual/introduction.html",
			"/foundation/support.html" => "/foundation/support-plans.html",
			"/api/index.html" => "http://api.haxe.org/",
		];

		for (page in list.keys()) {
			var content = views.Redirection.execute({
				redirectionLink: list.get(page)
			});

			Utils.save(Path.join([Config.outputFolder, page]), content, null, null);
		}
	}

}
