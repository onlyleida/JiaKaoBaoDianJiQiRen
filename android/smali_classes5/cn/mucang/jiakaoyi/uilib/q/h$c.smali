.class Lcn/mucang/jiakaoyi/uilib/q/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/jiakaoyi/uilib/q/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/q/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcn/mucang/jiakaoyi/uilib/q/f;

.field private final b:Lcn/mucang/jiakaoyi/uilib/q/h$b;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/q/f;Landroidx/appcompat/app/d;Lcn/mucang/jiakaoyi/uilib/q/h$b;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->a:Lcn/mucang/jiakaoyi/uilib/q/f;

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->b:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    .line 4
    iput-boolean p5, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->c:Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->a:Lcn/mucang/jiakaoyi/uilib/q/f;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/q/f;->r(F)V

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->a:Lcn/mucang/jiakaoyi/uilib/q/f;

    invoke-virtual {p1}, Lf/a/a/a/n/d/f;->dismiss()V

    :cond_0
    return-void
.end method

.method public b(ZLjava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->a:Lcn/mucang/jiakaoyi/uilib/q/f;

    invoke-virtual {v0}, Lf/a/a/a/n/d/f;->dismiss()V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->b:Lcn/mucang/jiakaoyi/uilib/q/h$b;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/q/h$c;->c:Z

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/q/h$b;->b(ZLjava/io/File;)V

    :cond_1
    :goto_0
    return-void
.end method
