.class Lcom/baidu/mobads/Ad;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobads/Ad$MaterialType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Ljava/lang/String;

.field private u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/baidu/mobads/Ad$MaterialType;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->NONE:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, p0, Lcom/baidu/mobads/Ad;->w:Lcom/baidu/mobads/Ad$MaterialType;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobads/Ad;->u:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobads/Ad;->v:Ljava/util/Set;

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/baidu/mobads/Ad;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v2, Lcom/baidu/mobads/Ad;

    invoke-direct {v2}, Lcom/baidu/mobads/Ad;-><init>()V

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->a:Ljava/lang/String;

    const-string v0, "desc"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->b:Ljava/lang/String;

    const-string v0, "tit"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->c:Ljava/lang/String;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v0, "act"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/mobads/Ad;->e:I

    const-string v0, "local_pic"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->f:Ljava/lang/String;

    const-string v0, "w_picurl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    const-string v0, "curl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    const-string v0, "clklogurl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->i:Ljava/lang/String;

    const-string v0, "winurl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->t:Ljava/lang/String;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->j:Ljava/lang/String;

    const-string v0, "sms"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->k:Ljava/lang/String;

    const-string v0, "pk"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->l:Ljava/lang/String;

    const-string v0, "w"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/mobads/Ad;->m:I

    const-string v0, "h"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/baidu/mobads/Ad;->n:I

    const-string v0, "mon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->o:Ljava/lang/String;

    const-string v0, "qk"

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    const-string v0, "appname"

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->q:Ljava/lang/String;

    const-string v0, "ori_curl"

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->r:Ljava/lang/String;

    const-string v0, "anti_tag"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v2, Lcom/baidu/mobads/Ad;->s:I

    iget-object v0, v2, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v3, "text"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->TEXT:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->w:Lcom/baidu/mobads/Ad$MaterialType;

    :cond_0
    :goto_0
    const-string v0, "mon"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "s"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/baidu/mobads/Ad;->a(Ljava/lang/String;)V

    const-string v4, "c"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/baidu/mobads/Ad;->b(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v2, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v2, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const-string v0, ""

    if-ltz v3, :cond_2

    iget-object v0, v2, Lcom/baidu/mobads/Ad;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v3, ".gif"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->GIF:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->w:Lcom/baidu/mobads/Ad$MaterialType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->STATIC_IMAGE:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->w:Lcom/baidu/mobads/Ad$MaterialType;

    goto :goto_0

    :cond_4
    iget-object v0, v2, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    const-string v3, "rm"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->HTML:Lcom/baidu/mobads/Ad$MaterialType;

    iput-object v0, v2, Lcom/baidu/mobads/Ad;->w:Lcom/baidu/mobads/Ad$MaterialType;

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobads/b/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->u:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/baidu/mobads/b/b;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->v:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->q:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lcom/baidu/mobads/Ad;->s:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "http://mobads.baidu.com/ad.html?url=%s&sn=%s&v=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/baidu/mobads/l;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobads/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lcom/baidu/mobads/l;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/Ad;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()Lcom/baidu/mobads/Ad$MaterialType;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->w:Lcom/baidu/mobads/Ad$MaterialType;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/Ad;->e:I

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->i:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->l:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->u:Ljava/util/Set;

    return-object v0
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->v:Ljava/util/Set;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->p:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->r:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/Ad;->t:Ljava/lang/String;

    return-object v0
.end method
