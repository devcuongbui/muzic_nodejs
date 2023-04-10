const form = document.getElementById("search-form");
const button = document.getElementById("search-button");

form.addEventListener("submit", (event) => {
    event.preventDefault(); // Ngăn chặn việc submit form mặc định
    button.style.display = "none"; // Ẩn nút button đi
    form.submit(); // Submit form bằng JavaScript
});