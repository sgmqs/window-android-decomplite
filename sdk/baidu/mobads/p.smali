.class Lcom/baidu/mobads/p;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/baidu/mobads/o;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/o;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    iput-object p2, p0, Lcom/baidu/mobads/p;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mobads/p;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/baidu/mobads/p;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/mobads/p;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/baidu/mobads/p;->a:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/baidu/mobads/p;->a:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    iget-object v4, p0, Lcom/baidu/mobads/p;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/mobads/p;->a:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/mobads/p;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/b/b;->e(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    iget-object v6, p0, Lcom/baidu/mobads/p;->b:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/baidu/mobads/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v4, :cond_8

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    :goto_0
    new-array v3, v2, [Z

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/mobads/b/b;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :goto_2
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    if-ge v1, v2, :cond_3

    aget-boolean v4, v3, v1

    if-nez v4, :cond_4

    :cond_3
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    iget-object v2, p0, Lcom/baidu/mobads/p;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/baidu/mobads/o;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    invoke-static {v0}, Lcom/baidu/mobads/o;->a(Lcom/baidu/mobads/o;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    invoke-static {v0}, Lcom/baidu/mobads/o;->a(Lcom/baidu/mobads/o;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rsplash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mobads/p;->d:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mobads/p;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mobads/p;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/mobads/b/b;->e(Ljava/lang/String;)Z

    :cond_7
    :goto_4
    return-void

    :cond_8
    move v2, v1

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_6
    if-nez v0, :cond_6

    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/baidu/mobads/p;->e:Lcom/baidu/mobads/o;

    iget-object v1, p0, Lcom/baidu/mobads/p;->b:Landroid/content/Context;

    invoke-virtual {v6}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/o;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    move v0, v1

    goto :goto_6
.end method
