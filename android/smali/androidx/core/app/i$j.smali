.class public Landroidx/core/app/i$j;
.super Landroidx/core/app/i$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/i$j$a;
    }
.end annotation


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/i$j$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/app/i$j$a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroidx/core/app/m;

.field private h:Ljava/lang/CharSequence;

.field private i:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/app/i$k;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/i$j;->f:Ljava/util/List;

    return-void
.end method

.method private A()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/app/i$j$a;

    .line 3
    invoke-virtual {v2}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private C(I)Landroid/text/style/TextAppearanceSpan;
    .locals 7

    .line 1
    new-instance v6, Landroid/text/style/TextAppearanceSpan;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    return-object v6
.end method

.method private D(Landroidx/core/app/i$j$a;)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    invoke-static {}, Landroidx/core/e/a;->c()Landroidx/core/e/a;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/high16 v3, -0x1000000

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    .line 4
    :goto_1
    invoke-virtual {p1}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v4

    const-string v5, ""

    if-nez v4, :cond_2

    move-object v4, v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v4

    .line 5
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6
    iget-object v4, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    invoke-virtual {v4}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v2, :cond_3

    .line 7
    iget-object v2, p0, Landroidx/core/app/i$k;->a:Landroidx/core/app/i$f;

    invoke-virtual {v2}, Landroidx/core/app/i$f;->getColor()I

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    iget-object v2, p0, Landroidx/core/app/i$k;->a:Landroidx/core/app/i$f;

    invoke-virtual {v2}, Landroidx/core/app/i$f;->getColor()I

    move-result v2

    move v3, v2

    .line 9
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/core/e/a;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 10
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 11
    invoke-direct {p0, v3}, Landroidx/core/app/i$j;->C(I)Landroid/text/style/TextAppearanceSpan;

    move-result-object v3

    .line 12
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v4, v2

    .line 13
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v6, 0x21

    .line 14
    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 15
    invoke-virtual {p1}, Landroidx/core/app/i$j$a;->h()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroidx/core/app/i$j$a;->h()Ljava/lang/CharSequence;

    move-result-object v5

    :goto_3
    const-string p1, "  "

    .line 16
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, v5}, Landroidx/core/e/a;->h(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v1
.end method

.method private z()Landroidx/core/app/i$j$a;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/core/app/i$j$a;

    .line 3
    invoke-virtual {v1}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/i$j$a;

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public B()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/core/app/i$k;->a:Landroidx/core/app/i$f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/core/app/i$f;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    return v1
.end method

.method public E(Z)Landroidx/core/app/i$j;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/i$k;->a(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    invoke-virtual {v0}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    invoke-virtual {v0}, Landroidx/core/app/m;->k()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messagingStyleUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    iget-object v0, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    const-string v1, "android.hiddenConversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    .line 9
    invoke-static {v0}, Landroidx/core/app/i$j$a;->a(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/core/app/i$j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Landroidx/core/app/i$j;->f:Ljava/util/List;

    .line 13
    invoke-static {v0}, Landroidx/core/app/i$j$a;->a(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.messages.historic"

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 15
    :cond_2
    iget-object v0, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public b(Landroidx/core/app/h;)V
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0}, Landroidx/core/app/i$j;->B()Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/core/app/i$j;->E(Z)Landroidx/core/app/i$j;

    const/16 v1, 0x18

    if-lt v0, v1, :cond_6

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v2, Landroid/app/Notification$MessagingStyle;

    iget-object v3, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    invoke-virtual {v3}, Landroidx/core/app/m;->j()Landroid/app/Person;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v2, Landroid/app/Notification$MessagingStyle;

    iget-object v3, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    invoke-virtual {v3}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    :goto_0
    iget-object v3, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/i$j$a;

    .line 5
    invoke-virtual {v4}, Landroidx/core/app/i$j$a;->k()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_1

    :cond_1
    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    .line 6
    iget-object v3, p0, Landroidx/core/app/i$j;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/i$j$a;

    .line 7
    invoke-virtual {v4}, Landroidx/core/app/i$j$a;->k()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$MessagingStyle;->addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    goto :goto_2

    .line 8
    :cond_2
    iget-object v3, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    if-lt v0, v1, :cond_4

    .line 9
    :cond_3
    iget-object v3, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    :cond_4
    if-lt v0, v1, :cond_5

    .line 10
    iget-object v0, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$MessagingStyle;->setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;

    .line 11
    :cond_5
    invoke-interface {p1}, Landroidx/core/app/h;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$MessagingStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    goto/16 :goto_9

    .line 12
    :cond_6
    invoke-direct {p0}, Landroidx/core/app/i$j;->z()Landroidx/core/app/i$j$a;

    move-result-object v1

    .line 13
    iget-object v2, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 14
    invoke-interface {p1}, Landroidx/core/app/h;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    .line 15
    invoke-interface {p1}, Landroidx/core/app/h;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 16
    invoke-virtual {v1}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 17
    invoke-interface {p1}, Landroidx/core/app/h;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    .line 18
    invoke-virtual {v1}, Landroidx/core/app/i$j$a;->g()Landroidx/core/app/m;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/core/app/m;->e()Ljava/lang/CharSequence;

    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_8
    :goto_3
    if-eqz v1, :cond_a

    .line 20
    invoke-interface {p1}, Landroidx/core/app/h;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    if-eqz v3, :cond_9

    .line 21
    invoke-direct {p0, v1}, Landroidx/core/app/i$j;->D(Landroidx/core/app/i$j$a;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_4

    .line 22
    :cond_9
    invoke-virtual {v1}, Landroidx/core/app/i$j$a;->h()Ljava/lang/CharSequence;

    move-result-object v1

    .line 23
    :goto_4
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_a
    const/16 v1, 0x10

    if-lt v0, v1, :cond_10

    .line 24
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 25
    iget-object v1, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_c

    .line 26
    invoke-direct {p0}, Landroidx/core/app/i$j;->A()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v1, 0x1

    .line 27
    :goto_6
    iget-object v4, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_7
    if-ltz v4, :cond_f

    .line 28
    iget-object v5, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/i$j$a;

    if-eqz v1, :cond_d

    .line 29
    invoke-direct {p0, v5}, Landroidx/core/app/i$j;->D(Landroidx/core/app/i$j$a;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_8

    :cond_d
    invoke-virtual {v5}, Landroidx/core/app/i$j$a;->h()Ljava/lang/CharSequence;

    move-result-object v5

    .line 30
    :goto_8
    iget-object v6, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v3

    if-eq v4, v6, :cond_e

    const-string v6, "\n"

    .line 31
    invoke-virtual {v0, v2, v6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 32
    :cond_e
    invoke-virtual {v0, v2, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 33
    :cond_f
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p1}, Landroidx/core/app/h;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const/4 p1, 0x0

    .line 34
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 35
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_10
    :goto_9
    return-void
.end method

.method protected f(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/i$k;->f(Landroid/os/Bundle;)V

    const-string v0, "android.messagingStyleUser"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.selfDisplayName"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.conversationTitle"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.hiddenConversationTitle"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.messages"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.messages.historic"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v0, "android.isGroupConversation"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    return-void
.end method

.method protected s()Ljava/lang/String;
    .locals 1

    const-string v0, "androidx.core.app.NotificationCompat$MessagingStyle"

    return-object v0
.end method

.method protected x(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/core/app/i$k;->x(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "android.messagingStyleUser"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/m;->b(Landroid/os/Bundle;)Landroidx/core/app/m;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Landroidx/core/app/m$a;

    invoke-direct {v0}, Landroidx/core/app/m$a;-><init>()V

    const-string v1, "android.selfDisplayName"

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/m$a;->f(Ljava/lang/CharSequence;)Landroidx/core/app/m$a;

    .line 7
    invoke-virtual {v0}, Landroidx/core/app/m$a;->a()Landroidx/core/app/m;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/i$j;->g:Landroidx/core/app/m;

    :goto_0
    const-string v0, "android.conversationTitle"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, "android.hiddenConversationTitle"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/i$j;->h:Ljava/lang/CharSequence;

    :cond_1
    const-string v0, "android.messages"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Landroidx/core/app/i$j;->e:Ljava/util/List;

    invoke-static {v0}, Landroidx/core/app/i$j$a;->f([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    const-string v0, "android.messages.historic"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v1, p0, Landroidx/core/app/i$j;->f:Ljava/util/List;

    invoke-static {v0}, Landroidx/core/app/i$j$a;->f([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    const-string v0, "android.isGroupConversation"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/i$j;->i:Ljava/lang/Boolean;

    :cond_4
    return-void
.end method
