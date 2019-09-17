import mongoose from 'mongoose';

const { Schema } = mongoose;

const PricesSchema = new Schema(
  {
    when: {
      type: Date,
      default: Date.now
    },
    data: Object
  }
)

export default mongoose.model('Prices', PricesSchema);