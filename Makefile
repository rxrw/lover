FLUTTER = flutter
DART = dart

.PHONY: watch build building format clean upgrade

all:

dev:
	@$(FLUTTER) run

gen:
	@$(FLUTTER) pub run build_runner build --delete-conflicting-outputs

watch:
	@$(FLUTTER) pub run build_runner watch --delete-conflicting-outputs

format:
	@$(DART) format .

clean:
	@rm -rf pubspec.lock
	@$(FLUTTER) clean

upgrade: clean
	@$(FLUTTER) pub upgrade

build-ios:
	@$(FLUTTER) build ipa

build-android:
	@$(FLUTTER) build apk
