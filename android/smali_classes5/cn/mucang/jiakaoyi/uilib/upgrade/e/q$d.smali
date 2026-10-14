.class final Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/utils/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->z(Ljava/lang/String;Ljava/io/File;Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

.field final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;->a(F)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$d;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$f;->c(Ljava/io/File;)V

    :cond_0
    return-void
.end method
