.class public Lcom/fy/adsdk/demon/BdAdViewHelper;
.super Ljava/lang/Object;
.source "BdAdViewHelper.java"


# instance fields
.field public _config:Lcom/fy/adsdk/demon/AdConfig;

.field private _context:Landroid/content/Context;

.field private adView:Lcom/baidu/mobads/AdView;

.field private countDown:I

.field private countDownView:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/fy/adsdk/demon/AdConfig;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/fy/adsdk/demon/AdConfig;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/fy/adsdk/demon/BdAdViewHelper$3;

    invoke-direct {v0, p0}, Lcom/fy/adsdk/demon/BdAdViewHelper$3;-><init>(Lcom/fy/adsdk/demon/BdAdViewHelper;)V

    iput-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->handler:Landroid/os/Handler;

    .line 54
    iput-object p1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/fy/adsdk/demon/BdAdViewHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->addCloseButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fy/adsdk/demon/BdAdViewHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 48
    iget v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDown:I

    return v0
.end method

.method static synthetic access$310(Lcom/fy/adsdk/demon/BdAdViewHelper;)I
    .locals 2
    .param p0, "x0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 48
    iget v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDown:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDown:I

    return v0
.end method

.method static synthetic access$400(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCloseButton()V
    .locals 9

    .prologue
    .line 129
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, "imageView":Landroid/widget/ImageView;
    const v6, 0xf123

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "image":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    const/high16 v7, 0x41700000    # 15.0f

    invoke-static {v6, v7}, Lcom/fy/adsdk/demon/AdUtils;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v5, v6

    .line 133
    .local v5, "width":F
    iget-object v6, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 135
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v6, "close.png"

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 136
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 137
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 139
    const-string v6, "debug"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resizedImage>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    new-instance v6, Lcom/fy/adsdk/demon/BdAdViewHelper$2;

    invoke-direct {v6, p0}, Lcom/fy/adsdk/demon/BdAdViewHelper$2;-><init>(Lcom/fy/adsdk/demon/BdAdViewHelper;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v6, v5

    float-to-int v7, v5

    invoke-direct {v4, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .local v4, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v6, 0x15

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v6, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    invoke-virtual {v6, v2, v4}, Lcom/baidu/mobads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    return-void

    .line 140
    .end local v4    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private addCountdownText()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v2, v3}, Lcom/fy/adsdk/demon/AdUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v1, v2

    .line 161
    .local v1, "width":F
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    .line 162
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    const-string v3, "#000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 164
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 165
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 167
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 168
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v1

    float-to-int v3, v1

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 169
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 170
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 171
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    iget-object v3, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v0}, Lcom/baidu/mobads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    return-void
.end method

.method private configAdView()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 80
    const-string v0, "debug"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v2, v2, Lcom/fy/adsdk/demon/AdConfig;->aPPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v2, v2, Lcom/fy/adsdk/demon/AdConfig;->adPlaceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v1, v1, Lcom/fy/adsdk/demon/AdConfig;->aPPID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobads/AdView;->setAppSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v1, v1, Lcom/fy/adsdk/demon/AdConfig;->aPPID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/mobads/AdView;->setAppSec(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/baidu/mobads/AdView;

    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v2, v2, Lcom/fy/adsdk/demon/AdConfig;->adPlaceId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    .line 84
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v0, v0, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Top:Lcom/fy/adsdk/demon/ADPosition;

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->addCountdownText()V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    new-instance v1, Lcom/fy/adsdk/demon/BdAdViewHelper$1;

    invoke-direct {v1, p0}, Lcom/fy/adsdk/demon/BdAdViewHelper$1;-><init>(Lcom/fy/adsdk/demon/BdAdViewHelper;)V

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/AdView;->setListener(Lcom/baidu/mobads/AdViewListener;)V

    .line 118
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hideAdViewInAV()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/baidu/mobads/AdView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    invoke-virtual {v0}, Lcom/baidu/mobads/AdView;->removeAllViews()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    .line 230
    :cond_0
    return-void
.end method

.method private hideAdViewInWM()V
    .locals 3

    .prologue
    .line 255
    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    const-string v2, "window"

    .line 257
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 258
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 259
    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    invoke-virtual {v1}, Lcom/baidu/mobads/AdView;->removeAllViews()V

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    .line 262
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private showAdViewInAV()V
    .locals 8

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 201
    iget-object v5, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    if-eqz v5, :cond_0

    .line 202
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 203
    .local v3, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 204
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 205
    .local v4, "statusBarHeight":I
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v1, "adRelativeLayout":Landroid/widget/RelativeLayout;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v0, "adLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    invoke-static {v5}, Lcom/fy/adsdk/demon/AdUtils;->getBdViewWidth(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v2, "adViewsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v5, Lcom/fy/adsdk/demon/BdAdViewHelper$5;->$SwitchMap$com$fy$adsdk$demon$ADPosition:[I

    iget-object v6, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v6, v6, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    invoke-virtual {v6}, Lcom/fy/adsdk/demon/ADPosition;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 218
    :goto_0
    const/16 v5, 0xe

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget-object v5, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5, v1, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v5, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    invoke-virtual {v1, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 222
    .end local v0    # "adLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1    # "adRelativeLayout":Landroid/widget/RelativeLayout;
    .end local v2    # "adViewsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "frame":Landroid/graphics/Rect;
    .end local v4    # "statusBarHeight":I
    :cond_0
    return-void

    .line 211
    .restart local v0    # "adLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1    # "adRelativeLayout":Landroid/widget/RelativeLayout;
    .restart local v2    # "adViewsLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3    # "frame":Landroid/graphics/Rect;
    .restart local v4    # "statusBarHeight":I
    :pswitch_0
    const/16 v5, 0xa

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 212
    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 215
    :pswitch_1
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 209
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showAdViewInWM()V
    .locals 4

    .prologue
    .line 233
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    if-eqz v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    const-string v3, "window"

    .line 235
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 236
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 237
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    invoke-static {v2}, Lcom/fy/adsdk/demon/AdUtils;->getBdViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 238
    const/4 v2, -0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 239
    sget-object v2, Lcom/fy/adsdk/demon/BdAdViewHelper$5;->$SwitchMap$com$fy$adsdk$demon$ADPosition:[I

    iget-object v3, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v3, v3, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    invoke-virtual {v3}, Lcom/fy/adsdk/demon/ADPosition;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 247
    :goto_0
    const/16 v2, 0x7d3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 248
    const/16 v2, 0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 250
    iget-object v2, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->adView:Lcom/baidu/mobads/AdView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void

    .line 241
    .restart local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v1    # "wm":Landroid/view/WindowManager;
    :pswitch_0
    const/16 v2, 0x30

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 244
    :pswitch_1
    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public displayAD()V
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAd()V

    .line 61
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->configAdView()V

    .line 62
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->showAdViewInAV()V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->showAdViewInWM()V

    goto :goto_0
.end method

.method public hideAd()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAdViewInAV()V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAdViewInWM()V

    goto :goto_0
.end method

.method public setAdPositionBottom()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Bottom:Lcom/fy/adsdk/demon/ADPosition;

    iput-object v1, v0, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    .line 126
    return-void
.end method

.method public setAdPositionTop()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Top:Lcom/fy/adsdk/demon/ADPosition;

    iput-object v1, v0, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    .line 122
    return-void
.end method

.method public setCountdownText(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->countDown:I

    .line 185
    new-instance v0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;

    invoke-direct {v0, p0}, Lcom/fy/adsdk/demon/BdAdViewHelper$4;-><init>(Lcom/fy/adsdk/demon/BdAdViewHelper;)V

    .line 196
    .local v0, "run":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    return-void
.end method
