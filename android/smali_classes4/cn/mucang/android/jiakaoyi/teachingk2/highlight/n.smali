.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/n;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$onRecordFinished$2;->a(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoEntity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
