.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BBB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $brake:Ljava/lang/String;

.field final synthetic $brakeDis:B

.field final synthetic $clutchDis:B

.field final synthetic $reason:B


# direct methods
.method constructor <init>(Ljava/lang/String;BBB)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$brake:Ljava/lang/String;

    iput-byte p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$brakeDis:B

    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$clutchDis:B

    iput-byte p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$reason:B

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a(BBB)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->invoke$lambda-0(BBB)[B

    move-result-object p0

    return-object p0
.end method

.method private static final invoke$lambda-0(BBB)[B
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    const/4 p0, 0x1

    aput-byte p1, v0, p0

    const/4 p0, 0x2

    aput-byte p2, v0, p0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderSpeedBrake:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    iget-byte v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$reason:B

    iget-byte v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$brakeDis:B

    iget-byte v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$clutchDis:B

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;

    invoke-direct {v5, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/l;-><init>(BBB)V

    invoke-virtual {v0, v1, v5}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->P(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;Lcn/mucang/android/jiakaoyi/signal/com/x/b;)Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4e0b\u53d1\u5e26\u884c\u7a0b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$brake:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", \u884c\u7a0b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$brakeDis:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u79bb\u5408: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$1;->$clutchDis:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void
.end method
