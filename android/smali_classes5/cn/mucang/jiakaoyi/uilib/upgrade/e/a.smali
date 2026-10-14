.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Boolean;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/h/b;

.field public final synthetic c:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;->a:Ljava/lang/Boolean;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;->c:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/a;->c:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-static {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$a;->b(Ljava/lang/Boolean;Lcn/mucang/android/jiakaoyi/framework/h/b;Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V

    return-void
.end method
