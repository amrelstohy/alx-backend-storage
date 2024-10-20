-- Create the index idx_name_first on the first letter of the name
CREATE INDEX idx_name_first ON names (SUBSTRING(name, 1, 1));
