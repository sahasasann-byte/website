CREATE TABLE `appointments` (
	`id` text PRIMARY KEY NOT NULL,
	`request` text NOT NULL,
	`owner` text NOT NULL,
	`date` text NOT NULL,
	`kind` text NOT NULL,
	`note` text NOT NULL,
	`status` text DEFAULT 'Requested' NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_appointments_owner` ON `appointments` (`owner`);--> statement-breakpoint
CREATE TABLE `audit` (
	`id` text PRIMARY KEY NOT NULL,
	`actor` text NOT NULL,
	`action` text NOT NULL,
	`target` text NOT NULL,
	`created` text NOT NULL
);
--> statement-breakpoint
CREATE TABLE `commissions` (
	`request` text PRIMARY KEY NOT NULL,
	`value` real NOT NULL,
	`rate` real NOT NULL,
	`received` real NOT NULL
);
--> statement-breakpoint
CREATE TABLE `events` (
	`id` text PRIMARY KEY NOT NULL,
	`request` text NOT NULL,
	`status` text NOT NULL,
	`note` text NOT NULL,
	`internal` integer DEFAULT 0 NOT NULL,
	`created` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_events_request` ON `events` (`request`);--> statement-breakpoint
CREATE TABLE `files` (
	`id` text PRIMARY KEY NOT NULL,
	`request` text NOT NULL,
	`owner` text NOT NULL,
	`name` text NOT NULL,
	`mime` text NOT NULL,
	`bytes` integer NOT NULL,
	`created` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_files_request` ON `files` (`request`);--> statement-breakpoint
CREATE TABLE `matches` (
	`id` text PRIMARY KEY NOT NULL,
	`buyer` text NOT NULL,
	`seller` text NOT NULL,
	`created` text NOT NULL
);
--> statement-breakpoint
CREATE TABLE `profiles` (
	`id` text PRIMARY KEY NOT NULL,
	`name` text NOT NULL,
	`phone` text DEFAULT '' NOT NULL,
	`contact` text DEFAULT 'Email' NOT NULL,
	`consent` text NOT NULL,
	`created` text NOT NULL
);
--> statement-breakpoint
CREATE TABLE `requests` (
	`id` text PRIMARY KEY NOT NULL,
	`owner` text NOT NULL,
	`mode` text NOT NULL,
	`type` text NOT NULL,
	`location` text NOT NULL,
	`budget` real NOT NULL,
	`size` text NOT NULL,
	`notes` text NOT NULL,
	`name` text NOT NULL,
	`phone` text NOT NULL,
	`email` text NOT NULL,
	`map` text DEFAULT '' NOT NULL,
	`status` text DEFAULT 'Submitted' NOT NULL,
	`created` text NOT NULL,
	`consent` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_requests_owner` ON `requests` (`owner`);--> statement-breakpoint
CREATE TABLE `tickets` (
	`id` text PRIMARY KEY NOT NULL,
	`owner` text NOT NULL,
	`subject` text NOT NULL,
	`message` text NOT NULL,
	`reply` text DEFAULT '' NOT NULL,
	`status` text DEFAULT 'Open' NOT NULL,
	`created` text NOT NULL
);
--> statement-breakpoint
CREATE INDEX `idx_tickets_owner` ON `tickets` (`owner`);