import { render, screen, fireEvent } from "@testing-library/react";
import Button from "../src/Button.tsx";
import { vi } from "vitest"; // ✅ Import vi

test("renders button with label", () => {
  render(<Button label="Click Me" onClick={() => {}} />);
  expect(screen.getByText("Click Me77q")).toBeInTheDocument();
});

test("calls onClick when button is clicked", () => {
  const handleClick = vi.fn(); // ✅ Now it works
  render(<Button label="Click Me" onClick={handleClick} />);
  
  fireEvent.click(screen.getByText("Click Me"));
  expect(handleClick).toHaveBeenCalledTimes(1);
});
