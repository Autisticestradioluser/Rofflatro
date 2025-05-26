--joker list
local joker_list = {
    'Gross Michael',
    'Never Punished',
    'Type A',
    'The Pivot',
    'Jake',
    'Murphy',
    'Crashout',
    'Well Met',
    'DVD',
    'Kalis Banhammer',
    'In-n-Out',
    'Hearthstone',
    'Jackin It',
    --'Just Get Chips',
    'Benus',
    'Grimbo',
    'What Would Doc Do',
    'Looks Inside',
    'Happy Birthday',
    'Avenged Sevenfold',
    'Money Shots',
    'Black Shirt',
    'Main Channel',
    'Thanks For The Primes',
    'Never Skip',
    'Caught In 4K',
    'o7',
    --'It Aint My Grave',
    --'Nice',
    'Voucher Clear',
    'The Thumbnail',
    'Sevens Suck',
    --'Nancy',
    --'Rock Hard',
    --'Draw the Diamonds',
    'Speculative Oops',
}

-- load all individual jokers and print an error if there is an error
for _, key in ipairs(joker_list) do
    local success, err = pcall(function()
        SMODS.load_file('cards/jokers/'..key..'.lua')()
    end)
    if not success then
        print("Error loading file: " .. key .. " - " .. err)
    end
end
