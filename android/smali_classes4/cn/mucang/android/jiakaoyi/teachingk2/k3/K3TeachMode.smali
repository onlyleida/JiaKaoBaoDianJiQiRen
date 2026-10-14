.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;",
        "",
        "mode",
        "",
        "desc",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V",
        "getDesc",
        "()Ljava/lang/String;",
        "getMode",
        "Teach",
        "Train",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

.field public static final enum Teach:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

.field public static final enum Train:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final mode:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->Teach:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->Train:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_basic_teaching:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_basic_teaching)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Teach"

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->Teach:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_independent_practice:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_independent_practice)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Train"

    const/4 v3, 0x1

    const-string v4, "1"

    invoke-direct {v0, v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->Train:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->mode:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;

    return-object v0
.end method


# virtual methods
.method public final getDesc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public final getMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3TeachMode;->mode:Ljava/lang/String;

    return-object v0
.end method
