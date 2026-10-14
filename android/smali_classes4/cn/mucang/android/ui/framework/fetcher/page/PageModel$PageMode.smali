.class public final enum Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/fetcher/page/PageModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

.field public static final enum CURSOR:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

.field public static final enum PAGE:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    const-string v1, "CURSOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;->CURSOR:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    .line 2
    new-instance v1, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    const-string v3, "PAGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;->PAGE:Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;->$VALUES:[Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;
    .locals 1

    .line 1
    const-class v0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;->$VALUES:[Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    invoke-virtual {v0}, [Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/ui/framework/fetcher/page/PageModel$PageMode;

    return-object v0
.end method
