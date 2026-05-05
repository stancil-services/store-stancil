-- One-time backfill of order_items.product_size for legacy rows.
-- Source: Supabase order_items export at
--   site-stancil-new/docs/StoreHub/order_items_rows (1).csv
-- Matched on (order_id, product_id, quantity, color); UPDATE
-- keyed on the D1 autoincrement id so each row is touched
-- exactly once.
--
-- D1 rows missing size : 242
-- Updates emitted     : 168
-- Unmatched (skipped) : 74
-- Ambiguous (skipped) : 0

UPDATE order_items SET product_size = 'M' WHERE id = 354 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 355 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 356 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 357 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 358 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 359 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 360 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 361 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 362 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 363 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 364 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 365 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 366 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 367 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 368 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 369 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 370 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 371 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 372 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 375 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 376 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 377 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 378 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 379 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 380 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 382 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 383 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 384 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 385 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 386 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 389 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 390 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 391 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 393 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 396 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 397 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 398 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 399 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 400 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 401 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 402 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 403 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 404 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 405 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 406 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 407 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 408 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 409 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 410 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 412 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 413 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 414 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 415 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 416 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 417 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 418 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 419 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 420 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 421 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 422 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 423 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 424 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 426 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 427 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 428 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 429 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 430 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 431 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 432 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 434 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 435 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 436 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 437 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 440 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 441 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 442 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 443 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 444 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 445 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 446 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = '2XL' WHERE id = 448 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = '2XL' WHERE id = 449 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 450 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 451 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 452 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 453 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 455 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 456 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = '2XL' WHERE id = 459 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = '2XL' WHERE id = 460 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 461 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 462 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 463 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 464 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 465 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 466 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 467 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = '2XL' WHERE id = 468 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = '2XL' WHERE id = 469 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 470 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 471 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 472 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 474 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 476 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 478 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 479 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 480 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 482 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 483 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 484 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 485 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 486 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 487 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 490 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 491 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 492 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 493 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 494 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 496 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 498 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 500 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 501 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 502 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 504 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 505 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 506 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 507 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 508 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 509 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 510 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 511 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 512 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 513 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 514 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 515 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 516 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 517 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 518 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 519 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 520 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'S' WHERE id = 521 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 523 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 524 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 525 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 528 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 529 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 530 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 531 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 532 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 533 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 534 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 537 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 538 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 539 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 540 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 542 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 543 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 544 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 545 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 546 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 547 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 548 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 549 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'L' WHERE id = 550 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'M' WHERE id = 551 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 552 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 553 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');
UPDATE order_items SET product_size = 'XL' WHERE id = 554 AND (product_size IS NULL OR product_size = '' OR product_size = 'N/A');

-- Unmatched D1 rows (no matching Supabase key):
--   id=5 order=5 product=41 qty=1 color=grey
--   id=16 order=6 product=41 qty=1 color=grey
--   id=21 order=7 product=41 qty=1 color=grey
--   id=23 order=8 product=43 qty=1 color=brown
--   id=28 order=10 product=15 qty=1 color=sandstone
--   id=29 order=10 product=17 qty=1 color=sandstone
--   id=43 order=15 product=43 qty=1 color=brown
--   id=44 order=15 product=39 qty=1 color=camo
--   id=57 order=21 product=25 qty=1 color=N/A
--   id=60 order=23 product=39 qty=1 color=camo
--   id=61 order=24 product=39 qty=0 color=camo
--   id=62 order=25 product=39 qty=0 color=camo
--   id=63 order=26 product=39 qty=0 color=camo
--   id=71 order=29 product=17 qty=1 color=sandstone
--   id=75 order=30 product=17 qty=0 color=sandstone
--   id=81 order=31 product=25 qty=1 color=N/A
--   id=87 order=32 product=25 qty=0 color=N/A
--   id=92 order=33 product=25 qty=1 color=N/A
--   id=149 order=49 product=14 qty=1 color=black
--   id=150 order=49 product=39 qty=1 color=camo
--   id=151 order=49 product=40 qty=1 color=black
--   id=173 order=59 product=40 qty=1 color=black
--   id=213 order=84 product=15 qty=5 color=sandstone
--   id=230 order=98 product=7 qty=1 color=camo
--   id=233 order=99 product=15 qty=1 color=sandstone
--   id=234 order=99 product=14 qty=1 color=black
--   id=235 order=99 product=39 qty=1 color=camo
--   id=236 order=100 product=5 qty=1 color=tan
--   id=340 order=164 product=7 qty=1 color=camo
--   id=341 order=164 product=5 qty=1 color=camo
--   id=373 order=114 product=7 qty=1 color=tan
--   id=374 order=114 product=8 qty=1 color=N/A
--   id=381 order=116 product=5 qty=1 color=camo
--   id=387 order=119 product=14 qty=1 color=black
--   id=388 order=120 product=39 qty=1 color=camo
--   id=392 order=121 product=39 qty=1 color=camo
--   id=394 order=123 product=14 qty=1 color=black
--   id=395 order=123 product=39 qty=1 color=camo
--   id=411 order=137 product=25 qty=1 color=N/A
--   id=425 order=148 product=39 qty=1 color=camo
--   id=433 order=152 product=25 qty=1 color=N/A
--   id=438 order=154 product=41 qty=1 color=grey
--   id=439 order=154 product=14 qty=1 color=black
--   id=447 order=160 product=40 qty=1 color=black
--   id=454 order=162 product=41 qty=1 color=grey
--   id=457 order=164 product=7 qty=1 color=camo
--   id=458 order=164 product=5 qty=1 color=camo
--   id=473 order=175 product=41 qty=1 color=grey
--   id=475 order=177 product=39 qty=3 color=camo
--   id=477 order=177 product=40 qty=2 color=black
--   id=481 order=180 product=5 qty=1 color=camo
--   id=488 order=183 product=14 qty=1 color=black
--   id=489 order=183 product=41 qty=1 color=grey
--   id=495 order=189 product=41 qty=1 color=grey
--   id=497 order=191 product=39 qty=1 color=camo
--   id=499 order=193 product=41 qty=2 color=grey
--   id=503 order=193 product=17 qty=1 color=sandstone
--   id=522 order=202 product=41 qty=1 color=grey
--   id=526 order=202 product=17 qty=1 color=sandstone
--   id=527 order=202 product=39 qty=1 color=camo
--   id=535 order=206 product=5 qty=1 color=camo
--   id=536 order=206 product=7 qty=1 color=camo
--   id=541 order=209 product=39 qty=1 color=camo
--   id=557 order=225 product=41 qty=1 color=grey
--   id=558 order=225 product=5 qty=1 color=tan
--   id=560 order=226 product=43 qty=1 color=tan
--   id=565 order=228 product=41 qty=1 color=grey
--   id=567 order=231 product=43 qty=1 color=purple
--   id=569 order=232 product=5 qty=1 color=camo
--   id=570 order=232 product=10 qty=1 color=black
--   id=574 order=233 product=14 qty=2 color=black
--   id=575 order=233 product=39 qty=2 color=camo
--   id=587 order=240 product=7 qty=1 color=camo
--   id=601 order=245 product=39 qty=1 color=camo
