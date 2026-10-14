.class final Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->m(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
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
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $ct:Ljava/util/concurrent/CountDownLatch;

.field final synthetic $data:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

.field final synthetic $loginType:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field final synthetic $user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$loginType:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$data:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$ct:Ljava/util/concurrent/CountDownLatch;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$loginType:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Z)V

    .line 4
    :cond_0
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->a:Lcn/mucang/jiakaoyi/uilib/login/LoginManager;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$user:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$data:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$handleReadState$1$1;->$ct:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->b(Lcn/mucang/jiakaoyi/uilib/login/LoginManager;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
