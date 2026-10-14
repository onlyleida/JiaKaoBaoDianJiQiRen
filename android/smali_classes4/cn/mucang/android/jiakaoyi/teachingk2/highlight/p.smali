.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/highlight/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/a/a/a/j/c;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

.field public final synthetic b:J


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/p;->b:J

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/p;->b:J

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;->e(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/s;JIILandroid/content/Intent;)V

    return-void
.end method
