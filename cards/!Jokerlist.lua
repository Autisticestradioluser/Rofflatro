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

-- load all individual jokers and check if they exist to prevent a nil value error
function load_jokers()
    for _, key in ipairs(joker_list) do
        local file_path = 'cards/jokers/' .. key .. '.lua'
        local file = io.open(file_path, "r")  -- Try to open the file in read mode
        if file then
            file:close()  -- Close the file if it exists
            SMODS.load_file(file_path)()  -- Load the joker file
        end
    end
end

-- Call the function to load the jokers
load_jokers()
