.class Lcom/baidu/mobads/a;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private volatile a:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/baidu/mobads/o;

.field private d:Lcom/baidu/mobads/SplashAdListener;

.field private e:Lcom/baidu/mobads/Ad;

.field private f:Landroid/os/Handler;

.field private g:Lcom/baidu/mobads/SplashAd$SplashType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mobads/o;Lcom/baidu/mobads/SplashAdListener;Lcom/baidu/mobads/SplashAd$SplashType;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "init"

    iput-object v0, p0, Lcom/baidu/mobads/a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobads/a;->b:Z

    iput-object p2, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobads/a;->f:Landroid/os/Handler;

    iput-object p3, p0, Lcom/baidu/mobads/a;->d:Lcom/baidu/mobads/SplashAdListener;

    invoke-virtual {p2}, Lcom/baidu/mobads/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/baidu/mobads/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p4, p0, Lcom/baidu/mobads/a;->g:Lcom/baidu/mobads/SplashAd$SplashType;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobads/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobads/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(IILcom/baidu/mobads/Ad;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-eqz p3, :cond_7

    iput-object p3, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->b()Lcom/baidu/mobads/Ad$MaterialType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->STATIC_IMAGE:Lcom/baidu/mobads/Ad$MaterialType;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/Ad$MaterialType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int v4, v3, p1

    mul-int v5, v2, p2

    if-lt v4, v5, :cond_1

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    iget-object v1, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v1}, Lcom/baidu/mobads/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobads/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, p0, Lcom/baidu/mobads/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobads/i;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/i;-><init>(Lcom/baidu/mobads/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/baidu/mobads/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobads/j;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/j;-><init>(Lcom/baidu/mobads/a;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v0}, Lcom/baidu/mobads/Ad;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    iget-object v3, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v3}, Lcom/baidu/mobads/Ad;->m()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v4}, Lcom/baidu/mobads/Ad;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    if-ge v2, p1, :cond_2

    if-ge v3, p2, :cond_2

    mul-int/2addr v3, p1

    div-int v2, v3, v2

    invoke-static {v1, p1, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->b()Lcom/baidu/mobads/Ad$MaterialType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->GIF:Lcom/baidu/mobads/Ad$MaterialType;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/Ad$MaterialType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/baidu/mobads/GifAnimView;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/baidu/mobads/f;

    invoke-direct {v2, p0}, Lcom/baidu/mobads/f;-><init>(Lcom/baidu/mobads/a;)V

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobads/GifAnimView;-><init>(Landroid/content/Context;Lcom/baidu/mobads/aa;)V

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/GifAnimView;->a(Ljava/io/InputStream;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/GifAnimView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v1}, Lcom/baidu/mobads/o;->b()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v2}, Lcom/baidu/mobads/o;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobads/GifAnimView;->a(II)V

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/GifAnimView;->a(I)V

    iget-object v1, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v1}, Lcom/baidu/mobads/o;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p0}, Lcom/baidu/mobads/GifAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {v0}, Lcom/baidu/mobads/GifAnimView;->a()V

    invoke-virtual {p0, v0}, Lcom/baidu/mobads/a;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->b()Lcom/baidu/mobads/Ad$MaterialType;

    move-result-object v0

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->HTML:Lcom/baidu/mobads/Ad$MaterialType;

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/Ad$MaterialType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/baidu/mobads/b/g;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/mobads/b/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/baidu/mobads/a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/baidu/mobads/g;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/g;-><init>(Lcom/baidu/mobads/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v1, Lcom/baidu/mobads/h;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/h;-><init>(Lcom/baidu/mobads/a;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7269\u6599\u683c\u5f0f\u4e0d\u6b63\u786e\uff01type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/baidu/mobads/Ad;->b()Lcom/baidu/mobads/Ad$MaterialType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->c(Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    const-string v1, "no ad"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobads/a;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/baidu/mobads/a;IILcom/baidu/mobads/Ad;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobads/a;->a(IILcom/baidu/mobads/Ad;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobads/a;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/baidu/mobads/a;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/baidu/mobads/b/f;->c(Ljava/lang/Throwable;)I

    :cond_0
    const-string v0, "end"

    iget-object v1, p0, Lcom/baidu/mobads/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "end"

    iput-object v0, p0, Lcom/baidu/mobads/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mobads/a;->f:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobads/e;

    invoke-direct {v1, p0, p2}, Lcom/baidu/mobads/e;-><init>(Lcom/baidu/mobads/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/o;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/SplashAdListener;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/a;->d:Lcom/baidu/mobads/SplashAdListener;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobads/a;)Lcom/baidu/mobads/Ad;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobads/Ad;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/baidu/mobads/a;->f:Landroid/os/Handler;

    new-instance v3, Lcom/baidu/mobads/k;

    invoke-direct {v3, p0}, Lcom/baidu/mobads/k;-><init>(Lcom/baidu/mobads/a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v2}, Lcom/baidu/mobads/Ad;->e()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    :sswitch_0
    iget-object v1, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v3}, Lcom/baidu/mobads/Ad;->j()Ljava/util/Set;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v4}, Lcom/baidu/mobads/Ad;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/baidu/mobads/AppActivity;

    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v5, "adid"

    iget-object v6, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v6}, Lcom/baidu/mobads/Ad;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "qk"

    iget-object v6, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v6}, Lcom/baidu/mobads/Ad;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "pack"

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appsid"

    invoke-static {v2}, Lcom/baidu/mobads/l;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "appsec"

    invoke-static {v2}, Lcom/baidu/mobads/l;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "os"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "prod"

    iget-object v6, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v6}, Lcom/baidu/mobads/o;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "v"

    invoke-static {}, Lcom/baidu/mobads/l;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sn"

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/baidu/mobads/l;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string v5, "e75"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "remote_activity"

    const-string v6, "com.baidu.mobads.remote.App2Activity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "monitor"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "curl"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    instance-of v1, v2, Landroid/app/Activity;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    const/16 v4, 0x400

    if-eq v1, v4, :cond_3

    const-string v1, "isFullScreen"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    :goto_3
    const-string v1, "orientation"

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "isFullScreen"

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    :sswitch_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "pk"

    iget-object v4, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v4}, Lcom/baidu/mobads/Ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "url"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "title"

    iget-object v1, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v1}, Lcom/baidu/mobads/Ad;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, "\u5e94\u7528"

    :goto_4
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "adid"

    iget-object v3, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v3}, Lcom/baidu/mobads/Ad;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "originUrl"

    iget-object v3, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v3}, Lcom/baidu/mobads/Ad;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dlTunnel"

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "popNotif"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "qk"

    iget-object v3, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v3}, Lcom/baidu/mobads/Ad;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "v"

    invoke-static {}, Lcom/baidu/mobads/l;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sn"

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/l;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/baidu/mobads/BaiduManager;->startDownload(Landroid/content/Context;Lorg/json/JSONObject;)V

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/baidu/mobads/a;->e:Lcom/baidu/mobads/Ad;

    invoke-virtual {v1}, Lcom/baidu/mobads/Ad;->a()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    goto :goto_4

    :catch_1
    move-exception v5

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    const/4 v1, 0x1

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobads/a;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/baidu/mobads/a;->b:Z

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    int-to-float v3, v0

    const/high16 v4, 0x43480000    # 200.0f

    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    int-to-float v3, v1

    const/high16 v4, 0x43160000    # 150.0f

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v4

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    :cond_2
    const-string v0, "\u5f00\u5c4f\u663e\u793a\u533a\u57df\u592a\u5c0f,\u5bbd\u5ea6\u81f3\u5c11200dp,\u9ad8\u5ea6\u81f3\u5c11150dp"

    invoke-static {v0}, Lcom/baidu/mobads/b/f;->c(Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "\u5e7f\u544a\u533a\u57df\u8fc7\u5c0f"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobads/a;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v2, v0}, Lcom/baidu/mobads/o;->a(I)V

    iget-object v2, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {v2, v1}, Lcom/baidu/mobads/o;->b(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobads/l;->j(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/baidu/mobads/a;->g:Lcom/baidu/mobads/SplashAd$SplashType;

    invoke-static {v3}, Lcom/baidu/mobads/SplashAd;->isRTSplash(Lcom/baidu/mobads/SplashAd$SplashType;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    invoke-virtual {p0}, Lcom/baidu/mobads/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/baidu/mobads/o;->e(Landroid/content/Context;)Lcom/baidu/mobads/Ad;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Lcom/baidu/mobads/a;->a(IILcom/baidu/mobads/Ad;)V

    iget-object v0, p0, Lcom/baidu/mobads/a;->c:Lcom/baidu/mobads/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/baidu/mobads/o;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Internal Error"

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobads/a;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/baidu/mobads/a;->f:Landroid/os/Handler;

    new-instance v4, Lcom/baidu/mobads/b;

    invoke-direct {v4, p0}, Lcom/baidu/mobads/b;-><init>(Lcom/baidu/mobads/a;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v3, Lcom/baidu/mobads/c;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/baidu/mobads/c;-><init>(Lcom/baidu/mobads/a;Landroid/content/Context;II)V

    invoke-virtual {v3}, Lcom/baidu/mobads/c;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
