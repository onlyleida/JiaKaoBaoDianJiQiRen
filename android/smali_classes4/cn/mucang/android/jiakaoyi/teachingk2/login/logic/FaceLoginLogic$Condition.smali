.class public final enum Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Condition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;",
        "",
        "text",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getText",
        "()Ljava/lang/String;",
        "NO_FACE",
        "FAR_FACE",
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
.field private static final synthetic $VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

.field public static final enum FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

.field public static final enum NO_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->NO_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_detected_face:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_no_detected_face)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "NO_FACE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->NO_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_near_camera:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_near_camera)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "FAR_FACE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->FAR_FACE:Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->$values()[Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;
    .locals 1

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    return-object p0
.end method

.method public static values()[Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->$VALUES:[Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;

    return-object v0
.end method


# virtual methods
.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/logic/FaceLoginLogic$Condition;->text:Ljava/lang/String;

    return-object v0
.end method
