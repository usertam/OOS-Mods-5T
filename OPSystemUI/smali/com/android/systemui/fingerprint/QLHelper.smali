.class public Lcom/android/systemui/fingerprint/QLHelper;
.super Ljava/lang/Object;
.source "QLHelper.java"


# instance fields
.field final mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mAppMap:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLHelper;->loadPaymentApps()V

    .line 52
    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 210
    goto :goto_0

    .line 209
    :catch_0
    move-exception v1

    .line 211
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_0
    const-string v1, "Unknown"

    :goto_1
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 177
    const/4 v0, 0x0

    move-object v1, v0

    .line 179
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 182
    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 185
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    .local v2, "resources":Landroid/content/res/Resources;
    goto :goto_1

    .line 187
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    nop

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v2, v0

    .line 191
    .local v2, "resources":Landroid/content/res/Resources;
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 192
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 193
    .local v3, "iconId":I
    if-eqz v3, :cond_0

    .line 195
    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/fingerprint/QLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v4

    .line 196
    :catch_2
    move-exception v4

    .line 201
    .end local v3    # "iconId":I
    :cond_0
    return-object v0
.end method

.method private getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .line 371
    const/16 v0, 0x1e0

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 374
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getPaymentApplicationIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "which"    # I

    .line 349
    const/4 v0, 0x0

    .line 351
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 362
    :pswitch_0
    const v2, 0x7f080231

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/fingerprint/QLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 363
    goto :goto_0

    .line 359
    :pswitch_1
    const v2, 0x7f080230

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/fingerprint/QLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 360
    goto :goto_0

    .line 356
    :pswitch_2
    const v2, 0x7f08041d

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/fingerprint/QLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 357
    goto :goto_0

    .line 353
    :pswitch_3
    const v2, 0x7f08041c

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/fingerprint/QLHelper;->getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 354
    nop

    .line 367
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 165
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 166
    .local v1, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 167
    const/4 v0, 0x1

    return v0

    .line 170
    .end local v1    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 171
    :goto_0
    const-string v1, "QuickLaunch.QLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0
.end method

.method private loadPaymentApps()V
    .locals 9

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    .line 217
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 220
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    .local v3, "config":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x4

    if-lt v5, v6, :cond_5

    .line 224
    new-instance v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    invoke-direct {v5}, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;-><init>()V

    .line 225
    .local v5, "payConfig":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    iput v2, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->index:I

    .line 226
    aget-object v6, v4, v1

    iput-object v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 227
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->switchName:Ljava/lang/String;

    .line 229
    const/4 v6, 0x1

    aget-object v7, v4, v6

    const-string v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    iput-boolean v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 231
    :cond_0
    aget-object v7, v4, v6

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_1
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 235
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 238
    :goto_1
    const-string v7, "default"

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 239
    iput-boolean v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->isDefault:Z

    .line 242
    :cond_2
    const-string v6, "class"

    const/4 v7, 0x3

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 243
    aget-object v6, v4, v7

    iput-object v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 246
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/fingerprint/QLHelper;->getPaymentApplicationIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 248
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 249
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x5050006

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 251
    .local v7, "iconSize":I
    invoke-virtual {v6, v1, v1, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 252
    iput-object v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 253
    .end local v7    # "iconSize":I
    goto :goto_2

    .line 254
    :cond_4
    iget-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/systemui/fingerprint/QLHelper;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 257
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "payConfig":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_6
    return-void
.end method

.method private loadShortCuts(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 153
    .local v0, "mQuery":Landroid/content/pm/LauncherApps$ShortcutQuery;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 154
    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 155
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 156
    .local v1, "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    return-object v1

    .line 159
    .end local v0    # "mQuery":Landroid/content/pm/LauncherApps$ShortcutQuery;
    .end local v1    # "shortcutInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseSettingData(Ljava/lang/String;)Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
    .locals 10
    .param p1, "settingsValue"    # Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 76
    :cond_0
    new-instance v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;

    invoke-direct {v1}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;-><init>()V

    .line 77
    .local v1, "actionInfo":Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 79
    .local v2, "colonIndex":I
    if-gez v2, :cond_1

    .line 81
    invoke-virtual {v1, p1}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->setActionName(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 84
    :cond_1
    const/4 v3, 0x4

    new-array v4, v3, [Ljava/lang/String;

    .line 85
    .local v4, "parts":[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 86
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 88
    .local v6, "tmp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v9, 0x1

    invoke-static {v6, v5, v4, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    aget-object v7, v4, v5

    invoke-virtual {v1, v7}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->setActionName(Ljava/lang/String;)V

    .line 90
    aget-object v7, v4, v9

    invoke-virtual {v1, v7}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->setPackage(Ljava/lang/String;)V

    .line 92
    iget-object v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/systemui/fingerprint/QLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    return-object v0

    .line 94
    :cond_2
    const-string v0, "OpenApp"

    aget-object v7, v4, v5

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_3

    .line 95
    aget-object v0, v4, v7

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 96
    iget-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/QLHelper;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 97
    iget-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/QLHelper;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    goto/16 :goto_4

    .line 98
    :cond_3
    const-string v0, "OpenShortcut"

    aget-object v9, v4, v5

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 99
    aget-object v0, v4, v7

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->setShortcutId(Ljava/lang/String;)V

    .line 100
    aget-object v0, v4, v8

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->setUid(Ljava/lang/String;)V

    .line 102
    iget-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/QLHelper;->loadShortCuts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "mShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    nop

    .line 104
    .local v5, "i":I
    :goto_0
    move v3, v5

    .line 104
    .end local v5    # "i":I
    .local v3, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 105
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 106
    .local v5, "si":Landroid/content/pm/ShortcutInfo;
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 108
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v7

    iput v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mShortcutIcon:I

    .line 109
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/16 v8, 0x1e0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 111
    iget-object v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_4

    .line 112
    iget-object v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/systemui/fingerprint/QLHelper;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 115
    :cond_4
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 117
    .local v7, "label":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 118
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 121
    :cond_5
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 122
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    .line 124
    :cond_6
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    .line 104
    .end local v5    # "si":Landroid/content/pm/ShortcutInfo;
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_7
    add-int/lit8 v5, v3, 0x1

    .line 104
    .end local v3    # "i":I
    .local v5, "i":I
    goto :goto_0

    .line 127
    .end local v0    # "mShortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    .end local v5    # "i":I
    :cond_8
    goto/16 :goto_4

    :cond_9
    const-string v0, "OpenQuickPay"

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    iget-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/QLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 129
    aget-object v0, v4, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    iget v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    iput-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mQuickPayConfig:Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    .line 131
    iget-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mQuickPayConfig:Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->appIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "zh"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 136
    .local v0, "isZh":Z
    iget v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    if-ne v5, v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    iget v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 139
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 137
    invoke-direct {p0, v7}, Lcom/android/systemui/fingerprint/QLHelper;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_c

    iget v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    if-ne v7, v3, :cond_b

    goto :goto_1

    :cond_b
    const-string v3, " "

    goto :goto_2

    :cond_c
    :goto_1
    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentAppsName:Ljava/util/ArrayList;

    iget v7, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    .line 139
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    iput-object v3, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    .line 144
    .end local v0    # "isZh":Z
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v6    # "tmp":[Ljava/lang/String;
    :cond_d
    :goto_4
    return-object v1
.end method


# virtual methods
.method public getQLApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mAppMap:Ljava/util/ArrayList;

    return-object v0
.end method

.method isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "configVersionName"    # Ljava/lang/String;

    .line 436
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/QLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    const-string v0, ""

    if-ne p2, v0, :cond_0

    goto :goto_4

    .line 440
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 441
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    const-string v2, ""

    .line 442
    .local v2, "nowVersionName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 443
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v2, v3

    .line 444
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 445
    .local v3, "nowVersion":[Ljava/lang/String;
    const-string v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 446
    .local v4, "configVersion":[Ljava/lang/String;
    array-length v5, v3

    array-length v6, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 447
    .local v5, "length":I
    move v6, v1

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_5

    .line 448
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 449
    aget-object v7, v3, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v1

    .line 450
    .local v7, "nowV":I
    :goto_1
    array-length v8, v4

    if-ge v6, v8, :cond_2

    .line 451
    aget-object v8, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v8, v1

    .line 452
    .local v8, "newV":I
    :goto_2
    if-ge v7, v8, :cond_3

    .line 453
    const/4 v1, 0x1

    return v1

    .line 454
    :cond_3
    if-le v7, v8, :cond_4

    .line 455
    return v1

    .line 447
    .end local v7    # "nowV":I
    .end local v8    # "newV":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 460
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "nowVersionName":Ljava/lang/String;
    .end local v3    # "nowVersion":[Ljava/lang/String;
    .end local v4    # "configVersion":[Ljava/lang/String;
    .end local v5    # "length":I
    .end local v6    # "i":I
    :cond_5
    goto :goto_3

    .line 459
    :catch_0
    move-exception v0

    .line 461
    :goto_3
    return v1

    .line 437
    :cond_6
    :goto_4
    return v1
.end method

.method public parseQLConfig(Ljava/lang/String;)V
    .locals 5
    .param p1, "config"    # Ljava/lang/String;

    .line 59
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseQLConfig config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 62
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "tmp":[Ljava/lang/String;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 65
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/android/systemui/fingerprint/QLHelper;->parseSettingData(Ljava/lang/String;)Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;

    move-result-object v3

    .line 66
    .local v3, "actionInfo":Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
    if-eqz v3, :cond_2

    .line 67
    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLHelper;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 64
    .end local v3    # "actionInfo":Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 378
    if-nez p1, :cond_0

    .line 379
    return-void

    .line 382
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 383
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 384
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/fingerprint/QLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 386
    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/fingerprint/QLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 388
    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 389
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/fingerprint/QLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 390
    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/fingerprint/QLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    .line 392
    :cond_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "op_quick_pay_paytm_config"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 393
    const/4 v3, 0x4

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/fingerprint/QLHelper;->updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    .line 382
    .end local v2    # "json":Lorg/json/JSONObject;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "index":I
    :cond_6
    const-string v0, "QuickLaunch.QLHelper"

    const-string v1, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "QuickLaunch.QLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 397
    :catch_1
    move-exception v0

    .line 398
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "QuickLaunch.QLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    nop

    .line 402
    :goto_3
    return-void
.end method

.method public startApp(Ljava/lang/String;Landroid/app/ActivityOptions;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ops"    # Landroid/app/ActivityOptions;
    .param p3, "uid"    # I

    .line 266
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    .line 270
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    .line 271
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 269
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 273
    const/4 v1, 0x1

    return v1

    .line 276
    :cond_0
    const-string v1, "QuickLaunch.QLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed because intent is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x0

    return v1
.end method

.method public startQuickPay(II)V
    .locals 7
    .param p1, "which"    # I
    .param p2, "uid"    # I

    .line 282
    :try_start_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QuickPay: startQuickPay which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/QLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v0

    .line 286
    .local v0, "pkgOK":Z
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 287
    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 288
    if-eq p1, v2, :cond_1

    .line 289
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    .line 290
    .local v3, "next":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    iget-boolean v4, v3, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->isDefault:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/fingerprint/QLHelper;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    move p1, v2

    .line 292
    const/4 v0, 0x1

    .line 293
    sget-boolean v4, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_2

    const-string v4, "QuickLaunch.QLHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QuickPay: startQuickPay new which="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 287
    .end local v3    # "next":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 300
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_5

    .line 301
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    .line 303
    .local v1, "next":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    const/4 v2, 0x0

    .line 304
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 305
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v2, v3

    .line 306
    const-string v3, "QuickLaunch.QLHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next.packageName "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " next.className "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v3, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 310
    :cond_3
    iget-object v3, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 311
    const-string v3, "QuickLaunch.QLHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next.urlScheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    iget-object v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v2, v3

    .line 314
    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 317
    .end local v1    # "next":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_2
    goto :goto_3

    .line 318
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    const v3, 0x50c0078

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 320
    const-string v1, "QuickLaunch.QLHelper"

    const-string v2, "QuickPay: startQuickPay have no installed app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v0    # "pkgOK":Z
    :goto_3
    goto :goto_4

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "QuickLaunch.QLHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuickPay: startQuickPay failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "test"    # Z

    .line 329
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 335
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLHelper;->mLauncherApps:Landroid/content/pm/LauncherApps;

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v7, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v0, 0x1

    return v0

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "QuickLaunch.QLHelper"

    const-string v3, "start shortcut failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return v1

    .line 343
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    const-string v0, "QuickLaunch.QLHelper"

    const-string v2, "shortcut service is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return v1
.end method

.method updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 9
    .param p1, "which"    # I
    .param p2, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 405
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 406
    .local v0, "whiteAppListJsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    move v2, v1

    .line 406
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 407
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 408
    .local v3, "config":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "split":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_4

    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v5, v6, :cond_4

    .line 410
    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    iget-object v5, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v6, v4, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/fingerprint/QLHelper;->isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 411
    new-instance v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;

    invoke-direct {v5}, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;-><init>()V

    .line 412
    .local v5, "tmp":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    aget-object v6, v4, v1

    iput-object v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    .line 413
    const/4 v6, 0x1

    aget-object v7, v4, v6

    const-string v8, "sdk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 414
    iput-boolean v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->isSDKstart:Z

    goto :goto_1

    .line 415
    :cond_0
    aget-object v7, v4, v6

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 416
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->urlScheme:Ljava/lang/String;

    goto :goto_1

    .line 418
    :cond_1
    aget-object v7, v4, v6

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    .line 419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->className:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 421
    :goto_1
    const-string v7, "default"

    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 422
    iput-boolean v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->isDefault:Z

    .line 424
    :cond_2
    const-string v6, "class"

    const/4 v7, 0x3

    aget-object v8, v4, v7

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 425
    aget-object v6, v4, v7

    iput-object v6, v5, Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;->tartgetClassName:Ljava/lang/String;

    .line 427
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/fingerprint/QLHelper;->mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v6, p1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v6, "QuickLaunch.QLHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "QuickPay: update "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v3    # "config":Ljava/lang/String;
    .end local v4    # "split":[Ljava/lang/String;
    .end local v5    # "tmp":Lcom/android/systemui/fingerprint/QLAdapter$OPQuickPayConfig;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 432
    .end local v2    # "i":I
    :cond_5
    return-void
.end method
