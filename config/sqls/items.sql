-- name: CreateItem :one
INSERT INTO items (
  user_id,
  amount,
  kind,
  happened_at,
  tag_ids
) VALUES (
  $1,
  $2,
  $3,
  $4,
  $5
)
RETURNING *;

-- name: ListItems :many
SELECT * from items
ORDER BY happened_at DESC
OFFSET $1
LIMIT $2;

-- name: ListItemsHappenedBetween :many
SELECT * from items
WHERE happened_at >= sqlc.arg(happened_after) AND happened_at < sqlc.arg(happened_before)
ORDER BY happened_at DESC ;

-- name: CountItems :one
SELECT count(*) FROM items;

-- name: DeleteAllItems :exec
DELETE FROM items;
