.class Lcom/baidu/mobads/t;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Z

.field final synthetic c:Lcom/baidu/mobads/o;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/o;Landroid/content/Context;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iput-object p2, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/baidu/mobads/t;->b:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v2, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/baidu/mobads/o;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v2, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/baidu/mobads/o;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ad"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v4, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobads/t;->b:Z

    if-eqz v0, :cond_6

    move v4, v3

    move v0, v3

    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ge v4, v2, :cond_5

    if-ge v4, v1, :cond_5

    :try_start_1
    invoke-virtual {v6, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    const-string v2, "type"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v8, ""

    const-string v8, "image"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v2, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v8, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-static {v2, v8, v7}, Lcom/baidu/mobads/o;->a(Lcom/baidu/mobads/o;Landroid/content/Context;Lorg/json/JSONObject;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    if-eqz v2, :cond_3

    :try_start_2
    const-string v0, "cachedurl"

    const-string v2, ""

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "type"

    const-string v8, "text"

    invoke-virtual {v7, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v9, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v8, v9, v0, v2}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/baidu/mobads/b/b;->e(Ljava/lang/String;)Z

    invoke-static {v7}, Lcom/baidu/mobads/Ad;->a(Lorg/json/JSONObject;)Lcom/baidu/mobads/Ad;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v8, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/baidu/mobads/Ad;->i()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0}, Lcom/baidu/mobads/Ad;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v9, v0}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    :cond_1
    const-string v0, "winurl"

    const-string v2, ""

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/baidu/mobads/b/b;->e(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_4
    :try_start_3
    const-string v8, "rm"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v8, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v2, v8, v7}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "local_pic"

    invoke-virtual {v7, v8, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v2, v1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    :try_start_4
    iget-object v0, p0, Lcom/baidu/mobads/t;->c:Lcom/baidu/mobads/o;

    iget-object v1, p0, Lcom/baidu/mobads/t;->a:Landroid/content/Context;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_2

    :cond_7
    move v2, v3

    goto/16 :goto_1
.end method
