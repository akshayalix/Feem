.class public Lde/jockels/open/pref/DevicesListPreference;
.super Landroid/preference/ListPreference;
.source "DevicesListPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Device"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    const-string v0, "devices_key"

    .line 62
    invoke-interface {p2, p1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "devices_available"

    .line 63
    invoke-interface {p2, p1, v2, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "devices_intern"

    .line 64
    invoke-interface {p2, p1, v3, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const/4 v3, 0x0

    const-string v4, "devices_data"

    .line 65
    invoke-interface {p2, p1, v4, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 67
    invoke-static {v0, v2, v1, p1}, Lde/jockels/open/Environment2;->getDevices(Ljava/lang/String;ZZZ)[Lde/jockels/open/Device;

    move-result-object p1

    .line 68
    array-length p2, p1

    new-array p2, p2, [Ljava/lang/CharSequence;

    .line 69
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 70
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_0

    .line 71
    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Lde/jockels/open/pref/DevicesListPreference;->createEntry(Lde/jockels/open/Device;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v3

    .line 72
    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Lde/jockels/open/pref/DevicesListPreference;->createEntryValue(Lde/jockels/open/Device;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, p2}, Lde/jockels/open/pref/DevicesListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {p0, v0}, Lde/jockels/open/pref/DevicesListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getDevice(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;)Lde/jockels/open/Device;
    .locals 4

    const/4 p0, 0x0

    .line 80
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 83
    invoke-static {}, Lde/jockels/open/Environment2;->getPrimaryExternalStorage()Lde/jockels/open/Device;

    move-result-object p0

    invoke-virtual {p0}, Lde/jockels/open/Device;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 84
    invoke-static {}, Lde/jockels/open/Environment2;->getPrimaryExternalStorage()Lde/jockels/open/Device;

    move-result-object p0

    return-object p0

    .line 86
    :cond_0
    invoke-static {}, Lde/jockels/open/Environment2;->getInternalStorage()Lde/jockels/open/Device;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 89
    invoke-static {p0, p2, v0, v0}, Lde/jockels/open/Environment2;->getDevices(Ljava/lang/String;ZZZ)[Lde/jockels/open/Device;

    move-result-object v0

    .line 90
    array-length v1, v0

    :goto_0
    if-ge p2, v1, :cond_3

    aget-object v2, v0, p2

    .line 91
    invoke-virtual {v2}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 93
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "didn\'t find mount point "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Device"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method protected createEntry(Lde/jockels/open/Device;)Ljava/lang/String;
    .locals 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/jockels/open/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lde/jockels/open/Device;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1}, Lde/jockels/open/Device;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lde/jockels/open/Device;->getSize()Lde/jockels/open/Size;

    move-result-object v2

    invoke-virtual {v2}, Lde/jockels/open/Size;->guessSize()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lde/jockels/open/Device;->getSize()Lde/jockels/open/Size;

    move-result-object v2

    iget-object v2, v2, Lde/jockels/open/Size;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-virtual {p0, v2, v3}, Lde/jockels/open/pref/DevicesListPreference;->f(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lde/jockels/open/Device;->getSize()Lde/jockels/open/Size;

    move-result-object p1

    iget-object p1, p1, Lde/jockels/open/Size;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lde/jockels/open/pref/DevicesListPreference;->f(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " frei"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, " (fehlt)"

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected createEntryValue(Lde/jockels/open/Device;)Ljava/lang/String;
    .locals 0

    .line 124
    invoke-virtual {p1}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected f(J)Ljava/lang/String;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lde/jockels/open/pref/DevicesListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    .line 101
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 102
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 103
    invoke-static {}, Lde/jockels/open/Environment2;->getPrimaryExternalStorage()Lde/jockels/open/Device;

    move-result-object p1

    invoke-virtual {p1}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p2, "2"

    .line 104
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-static {}, Lde/jockels/open/Environment2;->getCardDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 107
    :cond_1
    invoke-static {}, Lde/jockels/open/Environment2;->getInternalStorage()Lde/jockels/open/Device;

    move-result-object p1

    invoke-virtual {p1}, Lde/jockels/open/Device;->getMountPoint()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
