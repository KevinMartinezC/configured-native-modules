import { EventSubscription } from "expo-modules-core";

import ExpoSettingsModule from "./ExpoSettingsModule";

export type ThemeChangeEvent = {
  theme: string;
};

export function addThemeListener(
  listener: (event: ThemeChangeEvent) => void,
): EventSubscription {
  return ExpoSettingsModule.addListener("onChangeTheme", listener);
}

export function getTheme(): string {
  return ExpoSettingsModule.getTheme();
}

export function setTheme(theme: string): void {
  return ExpoSettingsModule.setTheme(theme);
}
