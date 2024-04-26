filters=(
    "MultiplyOperatorTest"
    "AddOperatorTest"
    "SubtractOperatorTest"
    "DivideOperatorTest"
    "SquareOperatorTest"
    "NegateOperatorTest"
    "SqrtOperatorTest"
    "AddTest"
    "SubtractTest"
    "MultiplyTest"
    "DivideTest"
    "NegateTest"
    "ExpressionTest1"
    "ExpressionTest2"
    "ExpressionTest3"
)

# Get the test number as an argument
test_number="$1"

# Validate the test number
if [[ $test_number -gt "${#filters[@]}" || $test_number -le 0 ]]; then
    echo "Invalid test number. Please enter a number between 1 and ${#filters[@]}."
    exit 1
fi

# Construct the full command with the selected filter
command="dotnet test --filter \"Name=${filters[$test_number - 1]}\""

# Execute the specified test
eval "$command"
