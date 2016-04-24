.class Lcom/baidu/mobads/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/Ad;

.field final synthetic b:Lcom/baidu/mobads/c;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/c;Lcom/baidu/mobads/Ad;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iput-object p2, p0, Lcom/baidu/mobads/d;->a:Lcom/baidu/mobads/Ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "init"

    iget-object v1, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v1, v1, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    invoke-static {v1}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v0, v0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    const-string v1, "loadFinished"

    invoke-static {v0, v1}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobads/d;->a:Lcom/baidu/mobads/Ad;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v0, v0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    const/4 v1, 0x0

    const-string v2, "no ad"

    invoke-static {v0, v1, v2}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v0, v0, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    iget-object v1, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget v1, v1, Lcom/baidu/mobads/c;->b:I

    iget-object v2, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget v2, v2, Lcom/baidu/mobads/c;->c:I

    iget-object v3, p0, Lcom/baidu/mobads/d;->a:Lcom/baidu/mobads/Ad;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;IILcom/baidu/mobads/Ad;)V

    iget-object v0, p0, Lcom/baidu/mobads/d;->a:Lcom/baidu/mobads/Ad;

    invoke-virtual {v0}, Lcom/baidu/mobads/Ad;->i()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/d;->a:Lcom/baidu/mobads/Ad;

    invoke-virtual {v1}, Lcom/baidu/mobads/Ad;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v2, v2, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    invoke-static {v2}, Lcom/baidu/mobads/a;->b(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/o;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v3, v3, Lcom/baidu/mobads/c;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/baidu/mobads/d;->b:Lcom/baidu/mobads/c;

    iget-object v1, v1, Lcom/baidu/mobads/c;->d:Lcom/baidu/mobads/a;

    const-string v2, "ad can not be displayed"

    invoke-static {v1, v0, v2}, Lcom/baidu/mobads/a;->a(Lcom/baidu/mobads/a;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method
