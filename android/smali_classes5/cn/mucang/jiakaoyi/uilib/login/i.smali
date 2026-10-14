.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic e:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->d:Ljava/util/concurrent/CountDownLatch;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->e:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->d:Ljava/util/concurrent/CountDownLatch;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/i;->e:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager$onUserLogin$1;->a(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Landroid/app/Activity;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    return-void
.end method
