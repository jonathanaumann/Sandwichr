class SandwichesController < ApplicationController
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

# ==================================================================================================
# ==================================================================================================	

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich 
	end

# ==================================================================================================
# ==================================================================================================	

	def show
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich 
			render json: {error: "sandwich not found"}, status: 404
			return
		end
		render json: sandwich.to_json(include: :ingredients) 
	end

# ==================================================================================================
# ==================================================================================================	

	def add_ingredient
		sandwich = Sandwich.find_by(id: params[:id])
		ingre = Ingredient.find_by(id: params[:ingredient_id])
		unless sandwich 
			render json: {error: "sandwich not found"}, status: 404
			return
		end
		sandwich.ingredients.push(ingre)
		render json: ingre
	end

# ==================================================================================================
# ==================================================================================================	

	def update
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"}, status: 404
			return
		end
		
		snadwich.update(sandwich_params)
		head :no_content 	
	end

# ==================================================================================================
# ==================================================================================================	

	def destroy
		sandwich = Sandwich.find_by(id: params[:id])
		unless sandwich
			render json: {error: "sandwich not found"}, status: 404
			return
		end

		sandwich.destroy 
		render json: sandwich
	end

# ==================================================================================================
# ======== ****** PRIVATE **** =====================================================================
# ==================================================================================================

	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
	end

end
