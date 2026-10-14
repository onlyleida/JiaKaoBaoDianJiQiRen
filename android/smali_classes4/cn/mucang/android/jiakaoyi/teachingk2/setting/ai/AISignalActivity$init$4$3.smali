.class final Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity;->q(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/ai/b;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/ai/AIFaceEnableSetModel;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/ai/b;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/ai/AISignalActivity$init$4$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/ai/b;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/ai/b;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u906e\u6321\u68c0\u6d4b\u6253\u5f00\u53d1\u9001\u6210\u529f"

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u906e\u6321\u68c0\u6d4b\u6253\u5f00\u53d1\u9001\u5931\u8d25"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
