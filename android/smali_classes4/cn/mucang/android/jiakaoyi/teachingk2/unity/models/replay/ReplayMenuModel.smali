.class public Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;
.super Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
.source "SourceFile"


# instance fields
.field public itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/trace/TraceMenuModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/replay/ReplayMenuModel;->itemList:Ljava/util/List;

    return-void
.end method
