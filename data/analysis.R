# Load data
df <- read.csv(
  "data/punjabi_simplification_models.csv",
  stringsAsFactors = FALSE,
  fileEncoding = "UTF-8"
)

# Word count function
word_count <- function(x) {
  x <- as.character(x)
  sapply(strsplit(x, "\\s+"), length)
}

# Compute word counts
df$normal_wc  <- word_count(df$normal_text)
df$chatgpt_wc <- word_count(df$simpChatGpt)
df$gemini_wc  <- word_count(df$simpGemini)

# Paired t-tests
t_chatgpt <- t.test(df$normal_wc, df$chatgpt_wc, paired = TRUE, alternative = "greater")
t_gemini  <- t.test(df$normal_wc, df$gemini_wc, paired = TRUE, alternative = "greater")
t_models  <- t.test(df$chatgpt_wc, df$gemini_wc, paired = TRUE)

print(t_chatgpt)
print(t_gemini)
print(t_models)

