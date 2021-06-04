import * as React from "react"
import { Link } from "gatsby"

const IndexPage = () => {
  return (
   <div className="index">
     <Link to="/games/game1">
      Game 1
     </Link>
   </div>
  )
}

export default IndexPage
