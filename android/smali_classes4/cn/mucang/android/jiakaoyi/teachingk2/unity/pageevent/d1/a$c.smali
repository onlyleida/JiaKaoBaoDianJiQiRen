.class Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntercept()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;J)J

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;Z)Z

    return-void
.end method

.method public onSpeakEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->g(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;J)J

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a$c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;->h(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/d1/a;Z)Z

    return-void
.end method
