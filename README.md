# Example

Example elixir web app using [CodeReloader](https://github.com/pilu/code_reloader).

If needed, `CodeReloader.Plug` recompiles the code at each request so that you don't need to restart the application
manually after changing the code.

## Usage

```bash
git clone git@github.com:pilu/code-reload-example.git
cd code-reload-example
mix deps.get
mix run --no-halt
```

* Open [http://localhost:9000](http://localhost:9000) on your browser.
* Edit `lib/example/router.ex` changing the response body from `Hello 1` to `Hello 2`
* Go back to the browser and refresh the page


