.class final enum Lcom/fy/adsdk/demon/ADPosition;
.super Ljava/lang/Enum;
.source "BdAdViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fy/adsdk/demon/ADPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fy/adsdk/demon/ADPosition;

.field public static final enum Bottom:Lcom/fy/adsdk/demon/ADPosition;

.field public static final enum Top:Lcom/fy/adsdk/demon/ADPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/fy/adsdk/demon/ADPosition;

    const-string v1, "Bottom"

    invoke-direct {v0, v1, v2}, Lcom/fy/adsdk/demon/ADPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fy/adsdk/demon/ADPosition;->Bottom:Lcom/fy/adsdk/demon/ADPosition;

    .line 39
    new-instance v0, Lcom/fy/adsdk/demon/ADPosition;

    const-string v1, "Top"

    invoke-direct {v0, v1, v3}, Lcom/fy/adsdk/demon/ADPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fy/adsdk/demon/ADPosition;->Top:Lcom/fy/adsdk/demon/ADPosition;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/fy/adsdk/demon/ADPosition;

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Bottom:Lcom/fy/adsdk/demon/ADPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Top:Lcom/fy/adsdk/demon/ADPosition;

    aput-object v1, v0, v3

    sput-object v0, Lcom/fy/adsdk/demon/ADPosition;->$VALUES:[Lcom/fy/adsdk/demon/ADPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fy/adsdk/demon/ADPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/fy/adsdk/demon/ADPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fy/adsdk/demon/ADPosition;

    return-object v0
.end method

.method public static values()[Lcom/fy/adsdk/demon/ADPosition;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/fy/adsdk/demon/ADPosition;->$VALUES:[Lcom/fy/adsdk/demon/ADPosition;

    invoke-virtual {v0}, [Lcom/fy/adsdk/demon/ADPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fy/adsdk/demon/ADPosition;

    return-object v0
.end method
