.class public Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final CODE_SUCCESS:I


# instance fields
.field public args:Ljava/lang/String;

.field public code:I

.field public data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public id:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->msg:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->args:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 11
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->msg:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->args:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->code:I

    .line 14
    iput p1, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    return-void
.end method

.method public constructor <init>(ILcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->msg:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->args:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->code:I

    .line 19
    iput p1, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    .line 20
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->msg:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->args:Ljava/lang/String;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->code:I

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->data:Lcn/mucang/android/jiakaoyi/unity/communicator/models/MessageModel;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/unity/c/d;->h(Ljava/lang/Class;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/unity/communicator/models/UnityMessage;->id:I

    return-void
.end method
