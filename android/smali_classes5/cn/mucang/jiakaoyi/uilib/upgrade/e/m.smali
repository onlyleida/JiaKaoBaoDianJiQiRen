.class public final synthetic Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/m;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->t(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;Ljava/lang/Exception;)V

    return-void
.end method
