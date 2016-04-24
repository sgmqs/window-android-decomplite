.class Lcom/baidu/mobads/g;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/a;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/a;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/g;->a:Lcom/baidu/mobads/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/g;->a:Lcom/baidu/mobads/a;

    invoke-static {v0}, Lcom/baidu/mobads/a;->d(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/Ad;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobads/g;->a:Lcom/baidu/mobads/a;

    invoke-static {v1}, Lcom/baidu/mobads/a;->d(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/Ad;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobads/Ad;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
