.class public final synthetic Lcn/mucang/jiakaoyi/uilib/login/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/f;->a:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/login/f;->b:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/login/f;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/f;->a:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/login/f;->b:Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/login/f;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/login/LoginManager;->u(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;Lcn/mucang/jiakaoyi/uilib/login/model/LoginData;Landroid/app/Activity;)V

    return-void
.end method
