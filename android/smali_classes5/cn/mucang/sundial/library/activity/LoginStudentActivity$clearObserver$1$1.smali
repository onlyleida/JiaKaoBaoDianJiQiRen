.class public final Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/library/widget/DialogCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->onChanged(Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1",
        "Lcn/mucang/sundial/library/widget/DialogCallBack;",
        "",
        "index",
        "Lkotlin/v;",
        "onSelect",
        "(I)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;

.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;

    iput-object p2, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;->$it:Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-static {}, Lcn/mucang/sundial/android/tcp/data/DataManager;->getInstance()Lcn/mucang/sundial/android/tcp/data/DataManager;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;->$it:Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;

    iget-object v0, v0, Lcn/mucang/sundial/android/eventbus/event/ClearIdEvent;->id:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcn/mucang/sundial/android/tcp/data/DataManager;->deleteStudent(Ljava/lang/Long;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getAdapter$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lme/drakeet/multitype/d;

    move-result-object p1

    invoke-static {}, Lcn/mucang/sundial/android/SundialManager;->getInstance()Lcn/mucang/sundial/android/SundialManager;

    move-result-object v0

    const-string v1, "SundialManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/mucang/sundial/android/SundialManager;->getLastStudents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lme/drakeet/multitype/d;->h(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;

    iget-object p1, p1, Lcn/mucang/sundial/library/activity/LoginStudentActivity$clearObserver$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getAdapter$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lme/drakeet/multitype/d;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
