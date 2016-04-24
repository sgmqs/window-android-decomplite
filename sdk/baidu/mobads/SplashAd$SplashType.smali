.class public final enum Lcom/baidu/mobads/SplashAd$SplashType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/SplashAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SplashType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/SplashAd$SplashType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CACHE:Lcom/baidu/mobads/SplashAd$SplashType;

.field public static final enum REAL_TIME:Lcom/baidu/mobads/SplashAd$SplashType;

.field private static final synthetic a:[Lcom/baidu/mobads/SplashAd$SplashType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mobads/SplashAd$SplashType;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobads/SplashAd$SplashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/SplashAd$SplashType;->CACHE:Lcom/baidu/mobads/SplashAd$SplashType;

    new-instance v0, Lcom/baidu/mobads/SplashAd$SplashType;

    const-string v1, "REAL_TIME"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobads/SplashAd$SplashType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/SplashAd$SplashType;->REAL_TIME:Lcom/baidu/mobads/SplashAd$SplashType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mobads/SplashAd$SplashType;

    sget-object v1, Lcom/baidu/mobads/SplashAd$SplashType;->CACHE:Lcom/baidu/mobads/SplashAd$SplashType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobads/SplashAd$SplashType;->REAL_TIME:Lcom/baidu/mobads/SplashAd$SplashType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mobads/SplashAd$SplashType;->a:[Lcom/baidu/mobads/SplashAd$SplashType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/SplashAd$SplashType;
    .locals 1

    const-class v0, Lcom/baidu/mobads/SplashAd$SplashType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/SplashAd$SplashType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/SplashAd$SplashType;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/SplashAd$SplashType;->a:[Lcom/baidu/mobads/SplashAd$SplashType;

    invoke-virtual {v0}, [Lcom/baidu/mobads/SplashAd$SplashType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/SplashAd$SplashType;

    return-object v0
.end method
