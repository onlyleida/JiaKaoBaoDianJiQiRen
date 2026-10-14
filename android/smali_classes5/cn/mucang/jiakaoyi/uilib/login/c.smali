.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public final synthetic d:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field public final synthetic e:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

.field public final synthetic f:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->b:Ljava/util/List;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->d:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p5, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->e:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iput-object p6, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->f:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->b:Ljava/util/List;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->c:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->d:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->e:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/login/c;->f:Ljava/util/concurrent/CountDownLatch;

    invoke-static/range {v0 .. v5}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->r(Landroid/app/Activity;Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
