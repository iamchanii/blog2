@react.component
let make = (~title, ~date, ~content, ~slug) => {
  module Styles = {
    let card = "flex flex-col gap-2 p-4 rounded-lg hover:bg-slate-50 dark:hover:bg-slate-700"
    let title = "font-bold"
    let date = "text-sm"
    let content = "line-clamp-3"
  }

  <Gatsby.Link className=Styles.card to={slug}>
    <div>
      <p className=Styles.title> {title->React.string} </p>
      <time className=Styles.date> {date->React.string} </time>
    </div>
    <p className={Styles.content}> {content->React.string} </p>
  </Gatsby.Link>
}
