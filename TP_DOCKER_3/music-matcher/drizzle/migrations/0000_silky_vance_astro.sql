CREATE TABLE `artists` (
	`id` integer PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`link` text NOT NULL,
	`picture` text NOT NULL,
	`picture_small` text NOT NULL,
	`picture_medium` text NOT NULL,
	`picture_big` text NOT NULL,
	`picture_xl` text NOT NULL,
	`nb_album` integer NOT NULL,
	`nb_fan` integer NOT NULL,
	`radio` integer NOT NULL,
	`tracklist` text NOT NULL,
	`type` text NOT NULL
);
--> statement-breakpoint
CREATE TABLE `disliked_artists` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`id_artist` integer NOT NULL,
	`id_user` integer NOT NULL,
	FOREIGN KEY (`id_artist`) REFERENCES `artists`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`id_user`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `liked_artists` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`id_artist` integer NOT NULL,
	`id_user` integer NOT NULL,
	FOREIGN KEY (`id_artist`) REFERENCES `artists`(`id`) ON UPDATE no action ON DELETE no action,
	FOREIGN KEY (`id_user`) REFERENCES `users`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `users` (
	`id` integer PRIMARY KEY AUTOINCREMENT NOT NULL,
	`name` text NOT NULL,
	`email` text NOT NULL,
	`password` text NOT NULL,
	`role` text DEFAULT 'user' NOT NULL
);
--> statement-breakpoint
CREATE UNIQUE INDEX `users_email_unique` ON `users` (`email`);