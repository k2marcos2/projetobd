CREATE OR REPLACE PROCEDURE atualizar_preco_produto(
    produto_id INT,
    novo_preco DECIMAL(10, 2)
)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE Produtos
    SET preco = novo_preco
    WHERE id = produto_id;
	RAISE NOTICE 'Preço do produto % atualizado para %', produto_id, novo_preco;
    COMMIT;
END;
$$;
CALL atualizar_preco_produto(1, 1300.00);