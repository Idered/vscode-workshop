import * as React from "react";

interface AppProps {}

export const App: React.FC<AppProps> = () => (
  <div className="my-class">
    <h1>Page title</h1>
    <p>
      Leverage agile frameworks to provide a robust synopsis for high level
      overviews. Iterative approaches to corporate strategy foster collaborative
      thinking to further the overall value proposition. Organically grow the
      holistic world view of disruptive innovation via workplace diversity and
      empowerment.
    </p>
    <button className="btn" type="button">
      Save
    </button>
  </div>
);
