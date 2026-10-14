.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$resumeCar$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->H()V
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
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$resumeCar$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$resumeCar$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;-><init>()V

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->TeachResume:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/AutoTeachStatus;->getType()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/teach/TeachStatusModel;->state:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/unity/c/d;->e(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant$resumeCar$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->s(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/q;->b()V

    return-void
.end method
