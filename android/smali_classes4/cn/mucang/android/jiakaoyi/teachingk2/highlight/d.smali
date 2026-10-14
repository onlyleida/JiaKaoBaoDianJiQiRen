.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/d;->d:J

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/q;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
