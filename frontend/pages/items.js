/*
*   Shows details of an individual item
*   If item not found, will return list of all items
*/

import ItemDetail from "../components/ItemDetail";
import Items from "../components/Items";

export default props => {
  const { query } = props;
  if (query && query.id) {
    return <ItemDetail id={parseInt(query.id)} />;
  } else {
    return <Items />;
  }
};
